const admin = require("firebase-admin/app");
admin.initializeApp();

const deleteAllImagesOnDocumentDelete = require("./delete_all_images_on_document_delete.js");
exports.deleteAllImagesOnDocumentDelete =
  deleteAllImagesOnDocumentDelete.deleteAllImagesOnDocumentDelete;
const onUserDeleted = require("./on_user_deleted.js");
exports.onUserDeleted = onUserDeleted.onUserDeleted;
const customPushNotification = require("./custom_push_notification.js");
exports.customPushNotification = customPushNotification.customPushNotification;
