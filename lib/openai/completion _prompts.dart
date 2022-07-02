/// A list of prompts to be used with the OpenAI completions endpoint
/// for generating weather forecasts.
///
/// The OpenAI completions endpoint accepts a prompt, along with a number
/// of other parameters detailed in the [CompletionApi] class, and returns a
/// text response that attempts to match the content and context of the
/// prompt. This file contains a number of prompts from which the app will
/// randomly choose when requesting a completion from the OpenAI
/// completions endpoint that serves and a "weather forecast."
List<String> completionsPrompts = [
  'Today\'s forecast is',
  'The forecast is',
  'Today\'s weather will be',
  'Here\'s the forecast for today:',
  'Today the weather will be',
  'The weather today will be',
  'The forecast:',
  'Today\'s forecast:',
  'Weather forecast:',
];
