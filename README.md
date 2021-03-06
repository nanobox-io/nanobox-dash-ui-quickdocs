## Usage
```coffeescript

# set the host
nanobox.Quickdocs.host = "http://127.0.0.1"

# activate toggles (to be done after the page is ready)
nanobox.Quickdocs.activateToggles()
```

#### Quickdoc toggle
```haml
.nanobox-dash-ui-quickdocs-toggle{data: {qd_path: "/path/to/qd"}}
```

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
