package com.mobile.hotelinn;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.squareup.picasso.Picasso;

import java.util.ArrayList;

public class Adapter extends RecyclerView.Adapter<Adapter.ViewProcessHolder> {

    Context context;
    private ArrayList<Model> item;
    onListListener mOnListListener;

    public Adapter(Context context, ArrayList<Model> item, onListListener onListListener) {
        this.context = context;
        this.item = item;
        this.mOnListListener = onListListener;
    }

    @Override
    public ViewProcessHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.view_item, parent, false);
        ViewProcessHolder processHolder = new ViewProcessHolder(view, mOnListListener);
        return processHolder;
    }

    @Override
    public void onBindViewHolder(ViewProcessHolder holder, int position) {

        final Model data = item.get(position);
        holder.nama_data.setText(data.getNama());
        holder.alamat_data.setText(data.getAlamat());
        holder.harga_data.setText(data.getHarga());
        Picasso.with(context)
                .load(data.getGambar())
                .into(holder.gambar_data);
    }

    @Override
    public int getItemCount() {
        return item.size();
    }

    public class ViewProcessHolder extends RecyclerView.ViewHolder implements View.OnClickListener {

        TextView nama_data, alamat_data, harga_data;
        ImageView gambar_data;
        onListListener onListListener;
        public ViewProcessHolder(@NonNull View itemView, onListListener onListListener) {
            super(itemView);
            nama_data = (TextView) itemView.findViewById(R.id.name);
            alamat_data = (TextView) itemView.findViewById(R.id.address);
            harga_data = (TextView) itemView.findViewById(R.id.price);
            gambar_data = (ImageView) itemView.findViewById(R.id.icon);
            this.onListListener = onListListener;

            itemView.setOnClickListener(this);
        }

        @Override
        public void onClick(View view) {
            onListListener.onListClick(getAdapterPosition());
        }
    }

    public interface onListListener{
        void onListClick(int position);
    }
}
