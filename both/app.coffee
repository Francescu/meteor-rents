#
# App: The Global Application Namespace
#
@App = {}

App.Constants =
  PastMonths: 3
  FutureMonths: 1
  Current: moment().format("YYYY-MM")

currentMonths = ->
  dates = []
  for i in [App.Constants.PastMonths..1]
    dates.push moment().subtract(i, 'month').format("YYYY-MM")

  dates.push App.Constants.Current

  for i in [1..App.Constants.FutureMonths]
    dates.push moment().add(i, 'month').format("YYYY-MM")

  return dates

App.months = new ReactiveVar(currentMonths())
