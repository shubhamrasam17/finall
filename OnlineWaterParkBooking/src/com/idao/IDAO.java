package com.idao;

import java.util.List;

import com.UserModel.SignUp.UserModel;

public interface IDAO {
	boolean getConnected();
	boolean userInsertRegistration(UserModel model);
	List<UserModel> getRecords();
	UserModel getRecordsById(int i);
	UserModel getRates(int i);
	UserModel gettime(int i);
	int deleteRecords(int i);
	int deletetiming(int i);
	int editRecords(UserModel model);
	int edittime(UserModel model);
    List<UserModel> getentryrates();
    int deleteEntryrates(int i);
	boolean addentryrate(UserModel model);
	List<UserModel> gettiming();
	int editRates(UserModel model);
	boolean addtiming(UserModel model);
	
}

