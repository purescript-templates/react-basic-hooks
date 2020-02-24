### Quick Start
```
git clone --depth 1 https://github.com/purescript-templates/react-basic-hooks.git myApp
cd myApp
npm install -g purescript spago parcel
spago build
parcel src/index.html --open
```

### Introduction

This template for [purescript-react-basic-hooks](https://pursuit.purescript.org/packages/purescript-react-basic-hooks/0.4.0) is a direct purescript port of the introductory example of the [official React Hooks documentation](https://reactjs.org/docs/hooks-intro.html).

More examples are available in the [package repository](https://github.com/spicydonuts/purescript-react-basic-hooks).

If you notice any problems with the below setup instructions, or have suggestions on how to make the new-user experience any smoother, please create an issue or pull-request.

Compatible with PureScript compiler 13.6

### Initial Setup

Install tools globally:
```
npm install -g purescript spago parcel
```
Initial compilation:
```
spago build
```
Launch webapp:
```
parcel src/index.html --open
```

### Development Cycle
If you're using an [editor](https://github.com/purescript/documentation/blob/master/ecosystem/Editor-and-tool-support.md#editors) that supports [`purs ide`](https://github.com/purescript/purescript/tree/master/psc-ide) or are running [`pscid`](https://github.com/kRITZCREEK/pscid), you simply need to keep the previous `parcel` command running in a terminal. Any save to a file will trigger an incremental recompilation, rebundle, and web page refresh, so you can immediately see your changes.

If your workflow does not support automatic recompilation, or if you add, remove, or modify module names, then you will need to manually re-run `spago build`.

### Production

When you are ready to create a minified bundle for deployment, run the following command:
```
parcel build src/index.html
```

Parcel output appears in the `./dist/` directory. Both development and production builds may be present.
The production output will be much smaller.

``` sh
> ls -hs dist

# Points to either minified or development .js. Depends which command was run most recently.
4.0K index.html

# Production output (minified)
352K src.1da726ad.js
928K src.1da726ad.js.map

# Development output
1.6M src.e31bb0bc.js
2.8M src.e31bb0bc.js.map
```

Deleting the `dist` directory before running `parcel build` is a convenient way to ensure there are no irrelevant files.

You can test the production output locally with a tool like [`http-server`](https://github.com/http-party/http-server#installation). It seems that `parcel` should also be able to accomplish this, but it unfortunately will only serve development builds locally.
```
npm install -g http-server
http-server dist -o
```

If everything looks good, you can then upload the contents of `dist` to your preferred static hosting service.