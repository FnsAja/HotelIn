package com.mobile.hotelinn;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.widget.ImageView;
import android.widget.TextView;

import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.JsonArrayRequest;
import com.mobile.hotelinn.config.Config;
import com.squareup.picasso.Picasso;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;

public class DetailActivity extends AppCompatActivity {

    ArrayList<Model> mItems;
    JSONObject data = new JSONObject();
    TextView nama, harga, bintang, alamat, fasilitas, jumlah_famili, desc_famili, jumlah_deluxe, desc_deluxe;
    ImageView foto;
    Context context;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_detail);

        init();
        mItems = new ArrayList<>();

        Bundle bundle = getIntent().getExtras();
        int position = bundle.getInt("id");

        JsonArrayRequest jsonArrayRequest = new JsonArrayRequest(Request.Method.POST, Config.getData, null, new Response.Listener<JSONArray>() {
            @Override
            public void onResponse(JSONArray response) {
                try {
                    data = response.getJSONObject(position);

                    Picasso.with(context)
                            .load(data.getString("foto"))
                            .fit()
                            .centerCrop()
                            .into(foto);
                    nama.setText(data.getString("nama"));
                    harga.setText(data.getString("harga"));
                    bintang.setText(data.getString("bintang"));
                    alamat.setText(data.getString("alamat"));
                    fasilitas.setText(data.getString("fasilitas"));
                    jumlah_famili.setText(data.getString("jml_kamar_famili"));
                    desc_famili.setText(data.getString("desc_famili"));
                    jumlah_deluxe.setText(data.getString("jml_kamar_deluxe"));
                    desc_deluxe.setText(data.getString("desc_deluxe"));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }, new Response.ErrorListener() {

            @Override
            public void onErrorResponse(VolleyError error) {
                Log.d("volley", "error : " + error.getMessage());
            }
        });
        Controller.getInstance().addToRequestQueue(jsonArrayRequest);
    }

    private void init(){
        foto = findViewById(R.id.foto);
        nama = findViewById(R.id.textViewNama);
        harga = findViewById(R.id.textViewPrice);
        bintang = findViewById(R.id.textViewRating);
        alamat = findViewById(R.id.textViewAddress);
        fasilitas = findViewById(R.id.textViewFac);
        jumlah_famili = findViewById(R.id.textViewAvaFam);
        desc_famili = findViewById(R.id.textViewFacFam);
        jumlah_deluxe = findViewById(R.id.textViewAvaDeluxe);
        desc_deluxe = findViewById(R.id.textViewFacDeluxe);
    }
}