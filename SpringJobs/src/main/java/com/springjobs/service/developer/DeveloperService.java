package com.springjobs.service.developer;

import java.util.List;

import com.springjobs.common.Search;
import com.springjobs.domain.Cpjts;

public interface DeveloperService {
	public List<Cpjts> getProjectList(Search search);
}
