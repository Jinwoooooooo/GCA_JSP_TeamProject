package kr.co.farmStory.util;

public class ProFileSQL {

public static final String INSERT_PROFILE = "insert into `file` set "
											+ "`pid`=?,"
											+ "`oName`=?,"
											+ "`sName`=?,"
											+ "`rdate`= NOW()";

public static final String SELECT_FILE_BY_FNO = "select * from `file` where `fno`=?";
public static final String UPDATE_FILE_DOWNLOAD_COUNT = "UPDATE `file` SET `download` = `download` + 1 WHERE `postNo`=?";
}
