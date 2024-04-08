type result = {
  @as("type")
  _type: string,
  uri: option<string>,
  name: option<string>,
  size: option<int>,
}

type documentPickerOptions
external documentPickerOptions: (
  @as("type")
  ~_type: string,
  ~multiple: bool,
  ~copyToCacheDirectory: bool,
) => documentPickerOptions = "DocumentPickerOptions"

@module("expo-document-picker")
external getDocumentAsync: documentPickerOptions => Js.Promise.t<result> = "getDocumentAsync"
