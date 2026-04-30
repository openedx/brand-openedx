# Open edX Brand Package Interface

This project contains the default branding assets and style used in Open edX
applications. It is published on npm as `@openedx/brand-openedx`.

The file structure serves as an interface to be implemented for custom
branding and theming of Open edX.

## How to use this package

Applications in Open edX are configured by default to include this
package for branding assets and theming visual style.

To use a custom brand and theme\...

1.  Fork or copy this project. Ensure that it lives in a location
    accessible to Open edX applications during asset builds. This may be
    a published git repo, npm, or local folder depending on your
    situation.
2.  Replace the assets in this project with your own logos and design
    tokens. Match the filenames exactly. Open edX applications refer to
    these files by their filepath. Refer to the brand for edx.org at
    <https://github.com/edx/brand> for an example.

    Theme customization is driven by design tokens; follow the guide at
    [Paragon Design Tokens Compatibility](./docs/how-to/design-tokens-support.rst).

3.  Configure your Open edX instance to consume your custom brand
    package. Refer to this documentation on configuring the platform:
    https://docs.openedx.org/projects/openedx-proposals/en/latest/architectural-decisions/oep-0048-brand-customization.html
    \[TODO: Add a link to documentation on configuring in Open edX MFE
    pipelines when it exists\]
4.  Rebuild the assets and microfrontends in your Open edX instance to
    see the new brand reflected. \[TODO: Add link to relevant
    documentation when it is completed\].

## Files this package must make available

`/logo.svg`

![logo](/logo.svg)

`/logo-trademark.svg` A variant of the logo with a trademark ® or ™.
Note: This file must be present. If you don\'t have a trademark variant
of your logo, copy your regular logo and use that.

![logo](/logo-trademark.svg)

`/logo-white.svg` A variant of the logo for use on dark backgrounds

![logo](/logo-white.svg)

`/favicon.ico` A site favicon

![favicon](/favicon.ico)

`/paragon/images/card-imagecap-fallback.png` A variant of the default
fallback image for [Card.ImageCap] component.

![card-imagecap-fallback](/paragon/images/card-imagecap-fallback.png)

`/core.min.css` (and `/core.css`) Brand-layer core CSS bundle, assembled
from `paragon/core.scss` by `paragon build-scss` at publish time.
Consumers import this on top of Paragon's own core CSS.

`/light.min.css` (and `/light.css`) Light theme variant CSS bundle,
assembled from the token outputs at `paragon/build/themes/light/`.
Consumers import this for the light theme.

## Source files (for forks customizing the brand)

These files live in this repo as inputs to the build; they are not
shipped in the published package.

`/paragon/core.scss` Assembly point consumed by `paragon build-scss` and
emitted as the published `core.min.css`. Its job is to `@use` the
token-generated CSS at `./build/core/...` so that those custom
properties end up in the bundle consumers download. With Paragon 23
this is not where brand customizations go (use design tokens for that),
but it is the place for non-tokenizable additions such as custom
`@media` rules, or brand-specific selectors that don't map to Paragon
components.

`/paragon/_fonts.scss` SASS partial for `@import` rules that load web
fonts referenced by tokens (e.g. Google Fonts URLs). `@use`d from
the default `core.scss` to pull font loading into the published bundle.

`/paragon/tokens/core/<category>/*.json`,
`/paragon/tokens/themes/<variant>/*.json` Design token overrides in
[Style Dictionary](https://styledictionary.com/) format, and the sole
supported way to customize the theme with Paragon 23. Files under
`core/` override Paragon's core tokens (typography, spacing,
breakpoints, etc.); files under `themes/<variant>/` override
theme-variant tokens (colors, component values) for that variant
(currently `light`). Empty stubs are included as placeholders, so the
default build is a noop that passes Paragon's defaults through. See
[Paragon Design Tokens Compatibility](./docs/how-to/design-tokens-support.rst).
