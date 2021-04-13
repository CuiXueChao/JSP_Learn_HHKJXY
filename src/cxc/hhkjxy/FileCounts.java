package cxc.hhkjxy;

import java.io.File;

/**
 * @ClassName:FileCounts
 * @DESCRIPTION:
 * @author: cxc
 * @DATE: 2021/4/4
 */

public class FileCounts {

    private String dir = "";
    private long fileCount = 0;

    public long getFileCount() {
        fileCount = this.getFC(new File(dir));
        return fileCount;
    }

    public String getDir() {
        return dir;
    }

    public void setDir(String dir) {
        this.dir = dir.trim();
    }

    /**
     * 递归调用实现返回目录下文件的个数
     *
     * @return
     * @Param dir
     * @Description
     * @author cxc
     * @date 2021/4/4
     */
    private long getFC(File dir) {
        //返回路径中的文件
        File[] files = dir.listFiles();
        if (files == null) {
            return fileCount;
        }
        for (int i = 0; i < files.length; i++) {
            this.fileCount++;
            if (files[i].isDirectory()) {
                getFC(files[i]);
            }
        }
        return fileCount;
    }
}
