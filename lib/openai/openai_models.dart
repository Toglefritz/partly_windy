/// Stores the available models for use with the OpenAI API.
///
/// OpenAI offers several different ML models for use with the OpenAI APIs
/// that have differing levels of power and speed. Different models are suitable
/// for different tasks. They also have different costs. The models are
/// defined and discussed on the OpenAI developer site:
/// (https://beta.openai.com/docs/models/gpt-3)[https://beta.openai.com/docs/models/gpt-3].
enum OpenAIModels {
  textDavinci002,
  textCurie001,
  textBabbage001,
  textAda001,
}

class OpenAIModel {
  final OpenAIModels model;
  final String identifier;

  OpenAIModel({required this.model, required this.identifier});

  /// Returns a [OpenAIModel] for the given model choice
  factory OpenAIModel.model(OpenAIModels model) {
    Map<OpenAIModels, String> modelIdentifiers = {
      OpenAIModels.textDavinci002: 'text-davinci-002',
      OpenAIModels.textCurie001: 'text-curie-001',
      OpenAIModels.textBabbage001: 'text-babbage-001',
      OpenAIModels.textAda001: 'text-ada-001',
    };

    return OpenAIModel(model: model, identifier: modelIdentifiers[model]!);
  }
}
