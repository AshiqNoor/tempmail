part of constants;

class ApiPath {
  static const _baseUrl = "https://api.mail.tm";

  static const login = "$_baseUrl/token";
  static const register = "$_baseUrl/accounts";
  static const profile = "$_baseUrl/me";
  static const messages = "$_baseUrl/messages";
  static const message = "$_baseUrl/messages/";
  static const seen = "$_baseUrl/messages/";
  static const delete = "$_baseUrl/messages/";
}
