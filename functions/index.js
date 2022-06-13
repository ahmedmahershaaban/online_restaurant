const functions = require("firebase-functions");
const admin = require('firebase-admin');
admin.initializeApp()

const db = admin.firestore();

exports.notificationForOrders = functions.firestore.document('Orders/{orderId}').onUpdate(
    async (change, context) => {
        try {
            const newData = change.after.data();
            const previousData = change.before.data();
            var messaging = '';
            if( newData.orderStatus  == 'On The Way'){
               messaging = 'You order is on the way';
            }else{
              messaging = 'You order has arrived';
            }
            var newPayload = {
                    "notification": {
                        "title": "Order Update",
                        "body": messaging,
                    }
                };
              const response = await admin.messaging().sendToDevice(newData.userNotificationToken, newPayload);


        } catch (e) {
            console.log("someError Happened in the notificationForOrders() : " + e);
        }
    }

);
