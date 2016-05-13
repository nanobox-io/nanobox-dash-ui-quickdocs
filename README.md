## Usage
```coffeescript

# initialize, selecting the type (either live, or historic)
quickdocs = new nanobox.Quickdocs $("body"), {}
quickdocs.build()

# activate any toggles on the current page (to be done after the page is ready)
quickdoc.activateToggles()
```

#### Options
| Option=default | Description |
|---|---|
| logsEnabled=false | Is logging enabled (T/F) |
| logLevel="INFO" | Selected log level of [available levels](https://github.com/sdomino/dash/blob/master/src/dash.coffee#L8) |
| host="" | The IP to pull quickdocs from |

## Data Structure
```json
{
	"title": "Logs",
	"body": "<ul class=\"doc-links\"><li>Full Docs</li><li><a href=\"\" target=\"_blank\">Log Management</a></li></ul><p class=\"intro\">Logs are vital when trying to identify issues or optimize your application. Here you can stream your app's logs, view historical logs, and view your app's deploy logs.</p><hr/><h2>Live Logs</h2><p>Live logs display your app's live log stream. They are an aggregated stream of everything your app outputs to stdout and stderr.</p><h2>Historical Logs</h2><p>Historical logs contain your app's log entries from the past week. They are loaded 100 entires at a time. Click \"View More\" to load older log entries.</p><h2>Deploy Logs</h2><p>Deploy logs are output streams of your app's deploys and service build transactions. Any transaction that requires a service build/rebuild will create a deploy log.</p><p class=\"note\">Historical &amp; Deploy Logs persist for 1 week</p>"
}
```

## Styles
This component expects the loaded data to be in Markdown (.md) format and so it's
styles are handled accordingly.
