package com.exam.ZipZom;

import java.util.ArrayList;

import modelTO.PfsTO;
import modelTO.userTO;

public interface TestMapper_pfs {
	public abstract ArrayList<PfsTO> pfs_list(userTO uto);
	public abstract int pfs_write(PfsTO pto);
}
