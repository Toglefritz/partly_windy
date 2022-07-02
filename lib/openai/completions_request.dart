import 'dart:convert';

/// Represents the parameters used in the body of a request to the OpenAI
/// completions endpoint.
///
/// The OpenAI completions endpoint is defined on the OpenAI developer site:
/// (https://beta.openai.com/docs/api-reference/completions/create)[https://beta.openai.com/docs/api-reference/completions/create?lang=curl].
/// This class is used to represent the parameters passed to the endpoint
/// in the body of the REST API request. The body has the format,
///
///   {
///     "model": "text-curie-001",
///     "prompt": "Say this is a test",
///     "max_tokens": 6,
///     "temperature": 0,
///     "top_p": 1,
///     "n": 1,
///     "stream": false,
///     "logprobs": null,
///     "stop": "\n"
///   }
class CompletionsRequest {
  final String model;
  final String prompt;
  final int maxTokens;
  final double? temperature;
  final int? topP;
  final int? n;
  final bool? stream;
  final int? longprobs;
  final String? stop;

  CompletionsRequest({
    required this.model,
    required this.prompt,
    required this.maxTokens,
    required this.temperature,
    this.topP,
    this.n,
    this.stream,
    this.longprobs,
    this.stop,
  });

  String toJson() {
    Map<String, dynamic> jsonBody = {
      'model': model,
      'prompt': prompt,
      'max_tokens': maxTokens,
    };

    if (temperature != null) {
      jsonBody.addAll({'temperature': temperature});
    }

    if (topP != null) {
      jsonBody.addAll({'top_p': topP});
    }

    if (n != null) {
      jsonBody.addAll({'n': n});
    }

    if (stream != null) {
      jsonBody.addAll({'stream': stream});
    }

    if (longprobs != null) {
      jsonBody.addAll({'longprobs': longprobs});
    }

    if (stop != null) {
      jsonBody.addAll({'stop': stop});
    }

    return json.encode(jsonBody);
  }
}
