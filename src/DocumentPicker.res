/**
  * expo-document-picker provides access to the system's UI for selecting documents from the available providers on the user's device.
  * see: https://docs.expo.dev/versions/latest/sdk/document-picker/
  */

/** file: File object for the parity with web File API.
  * lastModified: Timestamp of last document modification.
  * mimeType: Document MIME type.
  * name: Document original name.
  * size: Document size in bytes.
  * uri: An URI to the local document file.
  */
type documentPickerAsset

external documentPickerAsset: (
  ~name: string,
  ~uri: string,
  ~lastModified: option<int>,
  ~mimeType: option<string>,
  ~file: option<string>,
  ~size: option<int>,
) => documentPickerAsset = "DocumentPickerAsset"

/** copyToCacheDirectory: If true, the picked file is copied to FileSystem.CacheDirectory,
  *   which allows other Expo APIs to read the file immediately.
  *   This may impact performance for large files,
  *   so you should consider setting this to false if you expect users to 
  *   pick particularly large files and your app does not need immediate read access.
  *
  * multiple: Allows multiple files to be selected from the system UI.
  * _type: The MIME type(s) of the documents that are available to be picked. It also supports wildcards like 'image/*' to choose any image. 
  *        To allow any type of document you can use '*/*'.
  */
type documentPickerOptions
external documentPickerOptions: (
  @as("type") ~_type: string,
  ~multiple: bool,
  ~copyToCacheDirectory: bool,
) => documentPickerOptions = "DocumentPickerOptions"

/** Display the system UI for choosing a document. By default, the chosen file is copied to the app's internal cache directory.
  * 
  * Notes for Web: 
  * The system UI can only be shown after user activation (e.g. a Button press).
  * Therefore, calling getDocumentAsync in componentDidMount, for example, will not work as intended.
  * The cancel event will not be returned in the browser due to platform restrictions and inconsistencies across browsers.
  *
  * On success returns a promise that fulfils with DocumentResult object.
  * If the user cancelled the document picking, the promise resolves to { type: 'cancel' }.
  */
@module("expo-document-picker")
external getDocumentAsync: documentPickerOptions => Js.Promise.t<documentPickerAsset> =
  "getDocumentAsync"
