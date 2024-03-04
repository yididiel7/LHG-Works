./main.go:19:28: undefined: init
./main.go:34:20: cannot use m (variable of type model) as tea.Model value in return statement: model does not implement tea.Model (missing method Init)
./main.go:62:12: cannot use m (variable of type model) as tea.Model value in return statement: model does not implement tea.Model (missing method Init)
./main.go:96:25: cannot use initialModel() (value of type model) as tea.Model value in argument to tea.NewProgram: model does not implement tea.Model (missing method Init)
./main.go:97:18: assignment mismatch: 2 variables but p.Start returns 1 value

## Error Solution was Init: Replacing init with Init
./main.go:19:28: <undefined:> init

## Solution was Run: Replacing Start with Run
./main.go:97:18:<assignment mismatch: 2 variables but p.Start returns 1 value>
