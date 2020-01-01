package com.jai.test_flutter

import android.app.Service
import android.content.Intent
import android.os.Build
import android.os.IBinder
import android.widget.Toast
import androidx.core.app.NotificationCompat

/**
 * Created by JAI
 */

class MyService : Service() {
    override fun onCreate() {
        super.onCreate()

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val builder = NotificationCompat.Builder(this, "Messages").setContentText("Hello this is me ").setContentTitle("Foreground service").setSmallIcon(R.drawable.app_icon)
            startForeground(101, builder.build())
        }



    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        /**
         * Write service call here
         */
        Toast.makeText(applicationContext,"start Service",Toast.LENGTH_SHORT).show()

        return super.onStartCommand(intent, flags, startId)
    }



    override fun onDestroy() {
        Toast.makeText(applicationContext,"Stop Service",Toast.LENGTH_SHORT).show()
        super.onDestroy()
    }

    override fun onBind(intent: Intent?): IBinder? {
        return null
    }

}