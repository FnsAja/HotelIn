package com.mobile.hotelinn;

import android.app.Application;
import android.text.TextUtils;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.Volley;

public class Controller extends Application {
    private static final String TAG = Application.class.getSimpleName();
    private static Controller controller;
    RequestQueue mRequestQueue;

    @Override
    public void onCreate() {
        super.onCreate();
        controller = this;
    }

    public static synchronized Controller getInstance(){
        return controller;
    }

    private RequestQueue getRequestQueue(){
        if (mRequestQueue == null){
            mRequestQueue = Volley.newRequestQueue(getApplicationContext());
        }
        return mRequestQueue;
    }

    public <T> void addToRequestQueue(Request<T> req, String tag){
        req.setTag(TextUtils.isEmpty(tag) ? TAG : tag);
        getRequestQueue().add(req);
    }

    public <T> void addToRequestQueue (Request<T> req){
        req.setTag(TAG);
        getRequestQueue().add(req);
    }

    public void cancelAllRequest(Object req){
        if (mRequestQueue != null){
            mRequestQueue.cancelAll(req);
        }
    }
}
