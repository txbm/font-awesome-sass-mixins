# font-awesome-sass-mixins
For those of us who want to use Font Awesome without class tags and without loading every single class definition.


### Installation

```bash
gem install font-awesome-sass-mixins
```

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

