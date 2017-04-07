
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
Add dependency (leave empty to skip) []:
Successfully created an empty project in '/home/user/project/book-lang-d/book/example/start/dub/hello-dub/demo'.
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
demo ~master: building configuration "application"...
Linking...
Running ./demo
Edit source/app.d to start your project.
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
└── source
    └── app.d

1 directory, 3 files
```

### 執行編譯好的程式

執行

``` sh
$ ./demo
```

顯示

```
Edit source/app.d to start your project.
```
