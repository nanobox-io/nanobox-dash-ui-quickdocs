## Usage
```coffeescript

# initialize, selecting the type (either live, or historic)
quickdocs = new nanobox.Quickdocs $("body"), {}
```

#### Options
| Option=default | Description |
|---|---|
| logsEnabled=false | Is logging enabled (T/F) |
| logLevel="INFO" | Selected log level of [available levels](https://github.com/sdomino/dash/blob/master/src/dash.coffee#L8) |
| host="" | The IP to pull quickdocs from |
