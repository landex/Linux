# HyperJS Terminal configuration.

When I create this steps, the unique away to use ***HyperJS*** in POP OS 21 is using the .AppImage, I use the version 3.11.

In my folder ***.zsh*** I moved AppImage and defined a new shotcurt to open Hyper ***SUPER+T***.

* To open JS file that have ***HyperJS*** configuration open ***HyperJS*** and type ***CONTROL+,(COMMA)***.

PS: I won't show the default file here, so the text doesn't get too big....

* Define the font ***Fira Code***

:arrow_left: before :arrow_left:

```JavaScript
// font family with optional fallbacks
        fontFamily: 'Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',
```

:arrow_right: after :arrow_right:

```JavaScript
// font family with optional fallbacks
        fontFamily: '"Fira Code", Menlo, "DejaVu Sans Mono", Consolas, "Lucida Console", monospace',
```

* To enable the ligatures.
Run command below to install plugin

```bash
hyper i hyper-font-ligatures
```
