package com.example.casestudymodul3.Service;

import com.example.casestudymodul3.Dao.ConnectionAccount;
import com.example.casestudymodul3.model.Account;

import java.util.List;

public class ServiceAccount {


    public static List<Account> getall(){
        return ConnectionAccount.getall();
    }

    public  static Account ShowOneAccount(int id){
       return ConnectionAccount.ShowOneAccount(id);
    }
    public  static Account ShowStatus(int id){
        return ConnectionAccount.ShowStatus(id);
    }

    public static void  Delete(int id){
        ConnectionAccount.Delete(id);

    }
    public static void  Lookup(int id){
        ConnectionAccount.Lookup(id);

    }
    public static List<Account> Findbyusername(String username){
        return ConnectionAccount.Findbyusername(username);

    }


    public  static Account getTopfolow(){
        return ConnectionAccount.getTopfolow();
    }
    public  static Account getTopLike(){
        return ConnectionAccount.getTopLike();
    }


}
