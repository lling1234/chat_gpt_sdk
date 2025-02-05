import 'package:chat_gpt_sdk/src/client/exception/base_error.dart';

class RequestError extends BaseErrorWrapper {
  RequestError({super.message, super.code});
}

///Cause: Invalid Authentication
/// Solution: Ensure the correct API
/// key and requesting organization are being used.
class OpenAIAuthError extends BaseErrorWrapper {
  OpenAIAuthError({super.message, super.code});
}

///Cause: You are sending requests too quickly.
/// Solution: Pace your requests. Read the Rate limit guide.
class OpenAIRateLimitError extends BaseErrorWrapper {
  OpenAIRateLimitError({super.message, super.code});
}

///Cause: Issue on our servers.
///Solution: Retry your request
/// after a brief wait and
/// contact us if the issue persists. Check the status page.
class OpenAIServerError extends BaseErrorWrapper {
  OpenAIServerError({super.message, super.code});
}
