package com.terran4j.commons.api2doc.impl;

import java.util.ArrayList;
import java.util.List;

import com.terran4j.commons.api2doc.meta.ClassMeta;
import org.springframework.stereotype.Service;

import com.terran4j.commons.api2doc.domain.ApiFolderObject;
import com.terran4j.commons.util.value.KeyedList;

@Service
public class Api2DocService {

    private static final String v = String.valueOf(System.currentTimeMillis());
	
	private final KeyedList<String, ApiFolderObject> folders = new KeyedList<>();
	
	public boolean hasFolder(String id) {
		return folders.containsKey(id);
	}
	
	public ApiFolderObject getFolder(String id) {
		return folders.get(id);
	}
	
	public void addFolder(ApiFolderObject folder) {
		if (folder == null) {
			throw new NullPointerException("ApiFolderObject is null");
		}
		folders.add(folder.getId(), folder);
	}
	
	public List<ApiFolderObject> getFolders() {
		return folders.getAll();
	}

    public String addAppDocVersion(String path) {
	    if (path.indexOf("?") > 0) {
	        return path + "&v=" + getAppDocVersion();
        } else {
            return path + "?v=" + getAppDocVersion();
        }
    }

    public String getAppDocVersion() {
        return v;
    }

    public String getComponentVersion() {
	    return v;
    }

}
