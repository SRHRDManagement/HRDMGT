package org.khmeracademy.smg.service;

import org.khmeracademy.smg.model.User;

public interface UserService {
	public User findUserByEmail(String userEmail);
}
