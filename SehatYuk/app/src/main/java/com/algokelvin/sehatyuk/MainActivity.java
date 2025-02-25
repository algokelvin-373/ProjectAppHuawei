package com.algokelvin.sehatyuk;

import android.content.Intent;
import android.os.Bundle;

import androidx.activity.EdgeToEdge;
import androidx.appcompat.app.AppCompatActivity;

import com.algokelvin.sehatyuk.auth.HealthKitAuthActivity;
import com.algokelvin.sehatyuk.databinding.ActivityMainBinding;

public class MainActivity extends AppCompatActivity {
    private ActivityMainBinding binding;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        EdgeToEdge.enable(this);
        binding = ActivityMainBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());

        binding.btnAuthorize.setOnClickListener(v -> {
            Intent toAuthorize = new Intent(this, HealthKitAuthActivity.class);
            startActivity(toAuthorize);
        });
    }
}