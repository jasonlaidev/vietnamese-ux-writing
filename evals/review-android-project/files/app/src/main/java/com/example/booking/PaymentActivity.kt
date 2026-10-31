package com.example.booking

import android.os.Bundle
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity

class PaymentActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_payment)
    }

    private fun onPaymentResult(ok: Boolean) {
        if (ok) {
            Toast.makeText(this, "Thanh toán xong rồi!", Toast.LENGTH_SHORT).show()
        } else {
            Toast.makeText(this, "Thanh toán fail, thử lại sau nhé", Toast.LENGTH_LONG).show()
        }
    }
}
