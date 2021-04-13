package cxc.hhkjxy;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * @ClassName:FileCopy
 * @DESCRIPTION:
 * @author: cxc
 * @DATE: 2021/4/7
 */

public class FileCopy {

    private String src = "";
    private String goal = "";
    private String tips = "";


    public String getSrc() {
        return src;
    }

    /**
     * 处理字符串乱码问题
     *
     * @param src 接受到的数据源地址
     * @author cxc
     * @date 2021/4/7
     */
    public void setSrc(String src) throws Exception {
        byte[] bytes = src.trim().getBytes("iso8859-1");
        this.src = new String(bytes, "gbk");
    }

    public String getGoal() {
        return goal;
    }

    /**
     * 处理字符串乱码问题
     *
     * @param goal 目标地址
     * @author cxc
     * @date 2021/4/7
     */
    public void setGoal(String goal) throws Exception {
        byte[] bytes = goal.trim().getBytes("iso8859-1");
        this.goal = new String(bytes, "gbk");
    }

    public String getTips() throws IOException {
        if (src.trim().equals("") || goal.trim().equals("")) {
            return tips;
        }
        File srcFile = new File(src);
        File goalFile = new File(goal);
        if (!srcFile.exists()) {
            return tips = "文件不存在，无法拷贝！";
        } else if (srcFile.isDirectory()) {
            return tips = "暂不支持目录文件拷贝！";
        } else {
            if (goalFile.exists()) {
                if (goalFile.isDirectory()) {
                    File file = new File(goalFile, srcFile.getName());
                    copyFile(srcFile, file);
                    return tips = "成功！";
                } else {
                    return tips = "会覆盖已有文件，不许拷贝！";
                }
            } else {
                File parentFile = goalFile.getParentFile();
                if (!parentFile.exists()) {
                    parentFile.mkdirs();
                    copyFile(srcFile, goalFile);
                    return tips = "成功！";
                }
                return tips;
            }
        }
    }

    public void setTips(String tips) {
        this.tips = tips;
    }

    /**
     * 文件拷贝
     *
     * @param src  源文件地址
     * @param goal 目标文件地址
     * @author cxc
     * @date 2021/4/7
     */
    public void copyFile(File src, File goal) {
        try {
            FileInputStream fileInputStream = new FileInputStream(src);
            FileOutputStream fileOutputStream = new FileOutputStream(goal);
            byte[] bytes = new byte[1024];
            int len = -1;
            while ((len = fileInputStream.read(bytes)) != -1) {
                fileOutputStream.write(bytes, 0, len);
            }
            fileInputStream.close();
            fileOutputStream.close();
            tips = "文件拷贝完成！";
        } catch (Exception e) {
            tips = "文件拷贝出现异常！";
        }
    }
}
