package com.jai.test_flutter

import android.annotation.SuppressLint
import android.annotation.TargetApi
import android.os.Bundle
import android.widget.Toast
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant
import android.app.NotificationManager;
import android.app.Notification;
import android.content.Intent
import android.os.Build

class MainActivity : FlutterActivity() {
    companion object {
        val CHANNEL = "com.test/test"
        lateinit var serviceIntnt: Intent
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        serviceIntnt = Intent(this@MainActivity, MyService::class.java)

        MethodChannel(flutterEngine?.dartExecutor?.binaryMessenger, CHANNEL).setMethodCallHandler { methodCall, result ->

            if (methodCall.method.equals("showHelloToast")) {
                startBackgroundService()
            } else {
                Toast.makeText(applicationContext, "This is native toast", Toast.LENGTH_SHORT).show()

            }

        }


    }


    override fun onDestroy() {
        super.onDestroy()
        stopService(serviceIntnt)
    }

    private fun startBackgroundService() {

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            startForegroundService(serviceIntnt)
        } else {
            startService(serviceIntnt)
        }
    }


}

