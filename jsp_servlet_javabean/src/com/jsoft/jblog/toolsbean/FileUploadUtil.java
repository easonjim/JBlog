﻿package com.jsoft.jblog.toolsbean;

import java.io.File;
import java.util.*;
import org.apache.commons.fileupload.*;
import javax.servlet.http.HttpServletRequest;
import java.util.regex.Pattern;
import java.io.IOException;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import java.util.regex.Matcher;


/**
 * @author 
 *
 * TODO 要更改此生成的类型注释的模板，请转至
 * 窗口 － 首选项 － Java － 代码样式 － 代码模板
 */
public class FileUploadUtil {

    //当上传文件超过限制时设定的临时文件位置，注意是绝对路径
    private String tempPath = null;

    //文件上传目标目录，注意是绝对路径
    private String dstPath = null;

    //新文件名称，不设置时默认为原文件名
    private String newFileName = null;
    //获取的上传请求
    private HttpServletRequest fileuploadReq = null;

    //设置最多只允许在内存中存储的数据,单位:字节，这个参数不要设置太大
    private int sizeThreshold = 4096;

    //设置允许用户上传文件大小,单位:字节
    //共10M
    private long sizeMax = 10485760;

    //图片文件序号
    private int picSeqNo = 1;

    private boolean isSmallPic = false;

    public FileUploadUtil(){
    }

    public FileUploadUtil(String tempPath, String destinationPath){
        this.tempPath  = tempPath;
        this.dstPath = destinationPath;
    }

    public FileUploadUtil(String tempPath, String destinationPath, HttpServletRequest fileuploadRequest){
        this.tempPath   = tempPath;
        this.dstPath = destinationPath;
        this.fileuploadReq = fileuploadRequest;
    }

    /** 文件上载
     * @return true —— success; false —— fail.
     */
    public boolean Upload(){
        DiskFileItemFactory factory = new DiskFileItemFactory();

        try {

            //如果没有上传目的目录，则创建它
            FileUtil.makeDirectory(dstPath+"/ddd");
            /*if (!FileUtil.makeDirectory(dstPath+"/ddd")) {
                throw new IOException("Create destination Directory Error.");
            }*/
            //如果没有临时目录，则创建它
            FileUtil.makeDirectory(tempPath+"/ddd");
            /*if (!FileUtil.makeDirectory(tempPath+"/ddd")) {
                throw new IOException("Create Temp Directory Error.");
            }*/

            //上传项目只要足够小，就应该保留在内存里。
            //较大的项目应该被写在硬盘的临时文件上。
            //非常大的上传请求应该避免。
            //限制项目在内存中所占的空间，限制最大的上传请求，并且设定临时文件的位置。

            //设置最多只允许在内存中存储的数据,单位:字节
            factory.setSizeThreshold(sizeThreshold);
            // the location for saving data that is larger than getSizeThreshold()
            factory.setRepository(new File(tempPath));

            ServletFileUpload upload = new ServletFileUpload(factory);
            //设置允许用户上传文件大小,单位:字节
            upload.setSizeMax(sizeMax);

            List fileItems = upload.parseRequest(fileuploadReq);
            // assume we know there are two files. The first file is a small
            // text file, the second is unknown and is written to a file on
            // the server
            Iterator iter = fileItems.iterator();

            //  正则匹配，过滤路径取文件名
            String regExp = ".+\\\\(.+)$";

            //  过滤掉的文件类型
            String[] errorType = {".exe", ".com", ".cgi", ".asp", ".php", ".jsp"};
            Pattern p = Pattern.compile(regExp);
            while (iter.hasNext()) {
                System.out.println("++00++====="+newFileName);
                FileItem item = (FileItem) iter.next();
                //忽略其他不是文件域的所有表单信息
                if (!item.isFormField()) {
                    String name = item.getName();
                    System.out.println("++++====="+name);
                    long size = item.getSize();
                    //有多个文件域时，只上传有文件的
                    if ((name == null || name.equals("")) && size == 0)
                        continue;
                    Matcher m = p.matcher(name);
                    boolean result = m.find();
                    if (result) {
                        for (int temp = 0; temp < errorType.length; temp++) {
                            if (m.group(1).endsWith(errorType[temp])) {
                                throw new IOException(name + ": Wrong File Type");
                            }
                        }
                        String ext = "."+FileUtil.getTypePart(name);
                        try {
                            //保存上传的文件到指定的目录
                            //在下文中上传文件至数据库时，将对这里改写
                            //没有指定新文件名时以原文件名来命名
                            if (newFileName == null || newFileName.trim().equals(""))
                            {
                                item.write(new File(dstPath +"/"+ m.group(1)));
                            }
                            else
                            {
                                String uploadfilename = "";
                                if (isSmallPic)
                                {
                                    uploadfilename = dstPath +"/"+ newFileName+"_"+picSeqNo+"_small"+ext;
                                }
                                else
                                {
                                    uploadfilename = dstPath +"/"+ newFileName+"_"+picSeqNo+ext;
                                }
                                //生成所有未生成的目录
                                System.out.println("++++====="+uploadfilename);
                                FileUtil.makeDirectory(uploadfilename);
                                //item.write(new File(dstPath +"/"+ newFileName));
                                item.write(new File(uploadfilename));
                            }
                            picSeqNo++;
                            //out.print(name + "&nbsp;&nbsp;" + size + "<br>");
                        } catch (Exception e) {
                            //out.println(e);
                            throw new IOException(e.getMessage());
                        }
                    } else {
                        throw new IOException("fail to upload");
                    }
                }
            }
        } catch (IOException e) {
            System.out.println(e);
        } catch (FileUploadException e) {
            System.out.println(e);
        }
        return true;
    }

    /**从路径中获取单独文件名
     * @author
     *
     * TODO 要更改此生成的类型注释的模板，请转至
     * 窗口 － 首选项 － Java － 代码样式 － 代码模板
     */
    public String GetFileName(String filepath)
    {
        String returnstr = "*.*";
        int length       = filepath.trim().length();

        filepath = filepath.replace('\\', '/');
        if(length >0)
        {
            int i = filepath.lastIndexOf("/");
            if (i >= 0)
            {
                filepath  = filepath.substring(i + 1);
                returnstr = filepath;
            }
        }
        return returnstr;
    }
    /**
     * 设置临时存贮目录
     */
    public void setTmpPath(String tmppath)
    {
        this.tempPath = tmppath;
    }
    /**
     * 设置目标目录
     */
    public void setDstPath(String dstpath) {
        this.dstPath = dstpath;
    }
    /**
     * 设置最大上传文件字节数，不设置时默认10M
     */
    public void setFileMaxSize(long maxsize) {
        this.sizeMax = maxsize;
    }
    /**
     * 设置Http 请求参数，通过这个能数来获取文件信息
     */
    public void setHttpReq(HttpServletRequest httpreq) {
        this.fileuploadReq = httpreq;
    }
    /**
     * 设置Http 请求参数，通过这个能数来获取文件信息
     */
    public void setNewFileName(String filename) {
        this.newFileName = filename;
    }

    /**
     * 设置此上传文件是否是缩略图文件，这个参数主要用于缩略图命名
     */
    public void setIsSmalPic(boolean isSmallPic) {
        this.isSmallPic = isSmallPic;
    }

    /**
     * 设置Http 请求参数，通过这个能数来获取文件信息
     */
    public void setPicSeqNo(int seqNo) {
        this.picSeqNo = seqNo;
    }


}
