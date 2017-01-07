# font-awesome-sass-mixins
For those of us who want to use Font Awesome without class tags and without loading every single class definition.

#### Currently up to date with Font Awesome 4.7.0

### Installation

```bash
gem install font-awesome-sass-mixins
```
then

```sass
@import font-awesome-mixins
```

- Make sure you have the @font-face declaration somewhere in your SASS already. I may add that automatically in the near future.
- Make sure your fonts directory is also setup and that your @font-face points at it. This gem cannot really help you with that, it's out of scope.
- Make sure you set the `$fa-font-size-base` variable somewhere before you @import this extension.

### Usage

```sass
.my-element
	+fa-icon(pencil)
```

### Compilation
###### (no Rails or Compass hooks yet sorry)

```bash
sass -r font-awesome-sass-mixins my/sass/dir/styles.sass
```

### Current Feature

- Basic icon inclusion

### Future Feature

- Convenience parameters for controlling attributes like color, size etc...

