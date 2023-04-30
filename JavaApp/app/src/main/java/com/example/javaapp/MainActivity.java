package com.example.javaapp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;


import android.view.View;

import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.android.FlutterActivityLaunchConfigs;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.FlutterEngineCache;
import io.flutter.embedding.engine.dart.DartExecutor;


public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        FlutterEngine flutterEngine = new FlutterEngine(this);
//        flutterEngine = new FlutterEngine(this);
        // Configure an initial route.
        flutterEngine.getNavigationChannel().setInitialRoute("router2");
        // Start executing Dart code to pre-warm the FlutterEngine.
        flutterEngine.getDartExecutor().executeDartEntrypoint(
                DartExecutor.DartEntrypoint.createDefault()
        );
        // Cache the FlutterEngine to be used by FlutterActivity or FlutterFragment.
        FlutterEngineCache
                .getInstance()
                .put("my_engine_id", flutterEngine);




                FlutterEngine flutterEngine2 = new FlutterEngine(this);
        flutterEngine2.getNavigationChannel().setInitialRoute("router1");
//        flutterEngine.
        flutterEngine2.getDartExecutor().executeDartEntrypoint(
                DartExecutor.DartEntrypoint.createDefault()
        );
        FlutterEngineCache.getInstance().put("my_engine_id_1", flutterEngine2);
    }

    public void startFlutterActivity(View view) {
//        startActivity(FlutterActivity.createDefaultIntent(MainActivity.this));
//        startActivity(FlutterActivity.withNewEngine().initialRoute("router2").build(MainActivity.this));
//        FlutterEngine flutterEngine = new FlutterEngine(this);
////        flutterEngine = new FlutterEngine(this);
//        // Configure an initial route.
//        flutterEngine.getNavigationChannel().setInitialRoute("router2");
//        // Start executing Dart code to pre-warm the FlutterEngine.
//        flutterEngine.getDartExecutor().executeDartEntrypoint(
//                DartExecutor.DartEntrypoint.createDefault()
//        );
//        // Cache the FlutterEngine to be used by FlutterActivity or FlutterFragment.
//        FlutterEngineCache
//                .getInstance()
//                .put("my_engine_id", flutterEngine);
        startActivity(FlutterActivity.withCachedEngine("my_engine_id")
//                .backgroundMode(FlutterActivityLaunchConfigs.BackgroundMode.transparent)
                .build(MainActivity.this));
    }

    public void startFlutterActivity2(View view) {
//        startActivity(FlutterActivity.withCachedEngine("my_engine_id_1").build(MainActivity.this));
//                startActivity(FlutterActivity.withNewEngine().initialRoute("router2").build(MainActivity.this));
//                startActivity(FlutterActivity.withNewEngine().initialRoute("router1").build(MainActivity.this));

        Intent intent = FlutterActivity.withCachedEngine("my_engine_id_1").build(this);
        startActivity(intent);
    }
    public void startFlutterActivity3(View view) {
//                startActivity(FlutterActivity.withNewEngine().initialRoute("router1").build(MainActivity.this));

        startActivity(FlutterActivity.withNewEngine().initialRoute("router3")
                .build(MainActivity.this));
//      startActivity(FlutterActivity.withNewEngine().initialRoute("router2").build(MainActivity.this));

    }

    public void startFlutterActivity4(View view) {
        startActivity(FlutterActivity.withNewEngine().initialRoute("router4").build(MainActivity.this));
    }

    public void startFlutterActivity5(View view) {
        startActivity(FlutterActivity.withNewEngine().initialRoute("router5").build(MainActivity.this));
    }

    public void startFlutterActivity6(View view) {

        startActivity(FlutterActivity.withNewEngine().initialRoute("router6").build(MainActivity.this));
    }
}
