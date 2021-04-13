package cxc.hhkjxy;

import java.io.*;

/**
 * 文件读写类
 *
 * @ClassName:FlieReadAndWrite
 * @DESCRIPTION:
 * @author: cxc
 * @DATE: 2021/4/9
 */

public class FileReadAndWrite {

    /**
     * 文件路径
     */
    private String filePath = "";

    /**
     * 文件内容
     */
    private String fileContent = "";

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) throws Exception {
        //非空校验
        if (filePath == null) {
            this.filePath = "";
        }
        //字符格式转换
        byte[] bytes = filePath.trim().getBytes("iso8859-1");
        this.filePath = new String(bytes, "gbk");
    }

    /**
     * 读文件方法
     *
     * @param
     * @return java.lang.String
     * @author cxc
     * @date 2021/4/9
     */
    public String getFileContent() {
        if ("".equals(filePath)) {
            return fileContent;
        }
        File file = new File(filePath);
        if (!file.exists()) {
            fileContent = "文件不存在，无法获取数据！";
        } else if (file.isDirectory()) {
            fileContent = "仅支持文本文件格式的读取！";
        } else {
            try {
                FileReader fileReader = new FileReader(file);
                BufferedReader bufferedReader = new BufferedReader(fileReader);
                String line = null;
                StringBuffer stringBuffer = new StringBuffer();
                while ((line = bufferedReader.readLine()) != null) {
                    stringBuffer.append(line.trim() + "\n");
                }
                bufferedReader.close();
                fileReader.close();
                fileContent = stringBuffer.toString().trim();
            } catch (Exception e) {
                fileContent = "文件读取异常！请重试。";
            }
        }
        return fileContent;
    }

    /**
     * 设置文本内容，写文件方法
     *
     * @param fileContent 文本内容
     * @return void
     * @author cxc
     * @date 2021/4/9
     */
    public void setFileContent(String fileContent) throws Exception {
        //非空校验
        if (this.filePath == null) {
            this.fileContent = "文件不存在！";
        }
        //获取文件
        File file = new File(this.filePath);
        if (!file.exists()) {
            this.fileContent = "文件不存在，无法修改！";
        }
        if (file.isDirectory()) {
            this.fileContent = "仅支持文本文件格式的写入！";
        }
        //字符格式转换
        byte[] bytes = fileContent.getBytes("iso8859-1");
        this.fileContent = new String(bytes, "utf-8");
        System.out.println(this.fileContent);
        //字符写入流
        FileWriter fileWriter = new FileWriter(file);
        BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
        StringBuffer stringBuffer = new StringBuffer(this.fileContent.trim());
        bufferedWriter.write(stringBuffer.toString());
        this.fileContent = stringBuffer.toString();
        //关闭操作
        bufferedWriter.close();
        fileWriter.close();
    }
}
