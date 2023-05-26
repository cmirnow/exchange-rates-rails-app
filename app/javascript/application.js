// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import Highcharts from 'highcharts'
import addMore from "highcharts/highcharts-more"
import addExporting from "highcharts/modules/exporting"
import addExportData from "highcharts/modules/export-data"
import addAccessibility from "highcharts/modules/accessibility"
addMore(Highcharts)
addExporting(Highcharts)
addExportData(Highcharts)
addAccessibility(Highcharts)
window.Highcharts = Highcharts
