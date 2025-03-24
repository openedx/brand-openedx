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
2.  Replace the assets in this project with your own logos or SASS
    theme. Match the filenames exactly. Open edX applications refer to
    these files by their filepath. Refer to the brand for edx.org at
    <https://github.com/edx/brand> for an example.

    If you are working with Design tokens and CSS varibles please follow the guide 
    [Paragon Design Tokens Compatibility](./docs/how-to/design-tokens-support.rst)

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

`/paragon/fonts.scss`, `/paragon/_variables.scss`,
`/paragon/_overrides.scss` A SASS theme for
[\@edx/paragon](https://github.com/openedx/paragon). Theming
documentation in Paragon is coming soon. In the meantime, you can start
a theme by the contents of [\_variables.scss (after line
7)](https://github.com/openedx/paragon/blob/master/scss/core/_variables.scss#L7-L1046)
file from the Paragon repository into this file.
