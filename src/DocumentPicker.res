type result = {
  @as("type")
  _type: string,
  uri: option<string>,
  name: option<string>,
  size: option<int>,
}

type namedParameters
// external namedParameters: (
//   ~_type: string,
//   ~multiple: bool,
//   ~copyToCacheDirectory: bool,
// ) => namedParameters = ""

@module("expo-document-picker")
external getDocumentAsync: namedParameters => Js.Promise.t<result> = "getDocumentAsync"
