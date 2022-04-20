package de.golbros.capacitorqrscanner;

import android.app.Activity;
import android.content.Intent;
import android.util.Log;
import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.ActivityCallback;
import com.getcapacitor.annotation.CapacitorPlugin;

import androidx.activity.result.ActivityResult;

@CapacitorPlugin(name = "CapacitorQRScanner")
public class CapacitorQRScanner extends Plugin {

    @PluginMethod()
    public void scan(PluginCall call) {
        call.setKeepAlive(true);
        Intent intent = new Intent(getActivity(), QRScanner.class);
        startActivityForResult(call, intent, "scanQrCode");
    }

    @ActivityCallback
    private void scanQrCode(PluginCall call, ActivityResult result) {

        if (result.getResultCode() == Activity.RESULT_CANCELED) {
            call.reject("Activity canceled");
       } else {
            Intent data = result.getData();
            JSObject o = new JSObject();
            if (data != null) {
                o.put("code", data.getStringExtra("code"));
            } else {
                o.put("code", null);
            }
            call.resolve(o);
        }

        Log.d("PP","handle");


    }

}
