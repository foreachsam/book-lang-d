

## 操作步驟

### 初始專案

執行

``` sh
$ dub init demo
```

顯示

```
Package recipe format (sdl/json) [json]:
Name [demo]:
Description [A minimal D application.]:
Author name [user]:
License [proprietary]: MIT
Copyright string [Copyright © 2017, user]:
Add dependency (leave empty to skip) []: gtk-d
Added dependency gtk-d ~>3.5.1
Add dependency (leave empty to skip) []:
Successfully created an empty project in '/home/user/project/book-lang-d/book/example/subject/gtk/window/prototype/demo-basic/demo'.
Package successfully created in demo
```

執行

``` sh
$ tree demo
```

顯示

```
demo
├── dub.json
└── source
    └── app.d

1 directory, 2 files
```

### 切換到專案資料夾

執行

``` sh
$ cd demo
```

### 編輯「source/app.d」

``` sh
$ vim source/app.d
```

### 編譯

執行

``` sh
$ dub
```

或是執行

``` sh
$ dub run
```

執行

```
Performing "debug" build using dmd for x86_64.
gtk-d:gtkd 3.5.1: target for configuration "library" is up to date.
gtk-d:gstreamer 3.5.1: target for configuration "library" is up to date.
gtk-d:gtkdgl 3.5.1: target for configuration "library" is up to date.
gtk-d:peas 3.5.1: target for configuration "library" is up to date.
gtk-d:sv 3.5.1: target for configuration "library" is up to date.
gtk-d:vte 3.5.1: target for configuration "library" is up to date.
gtk-d 3.5.1: target for configuration "library" is up to date.
demo ~master: building configuration "application"...
Linking...
To force a rebuild of up-to-date targets, run again with --force.
Running ./demo
```

執行

``` sh
$ tree .
```

顯示

```
.
├── demo
├── dub.json
├── dub.selections.json
└── source
    └── app.d

1 directory, 4 files
```

### 執行編譯好的程式

執行

``` sh
$ ./demo
```
