extends Node

# Starting Level.
var startingLevel: String = Framework.LevelDict.MainMenu

# Log levels.
enum LogLevel {
	Error,
	Warning,
	Info,
	All,
}
var logLevel: LogLevel = LogLevel.All
