package com.idao;

import java.util.List;

import com.UserModel.SignUp.UserModel;

public interface IDAO {
	boolean getConnected();
	boolean userInsertRegistration(UserModel model);
	List<UserModel> getRecords();
	UserModel getRecordsById(int i);
	int deleteRecords(int i);

}

