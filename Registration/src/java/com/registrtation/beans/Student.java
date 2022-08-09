
package com.registrtation.beans;


public class Student {
    int stdId;
    String stdName;
    String module;
    String result;

    public Student(int stdId, String stdName, String module, String result) {
        this.stdId = stdId;
        this.stdName = stdName;
        this.module = module;
        this.result = result;
    }

    public Student(String stdName, String module, String result) {
        this.stdName = stdName;
        this.module = module;
        this.result = result;
    }

    public Student() {
    }

    public int getStdId() {
        return stdId;
    }

    public void setStdId(int stdId) {
        this.stdId = stdId;
    }

    public String getStdName() {
        return stdName;
    }

    public void setStdName(String stdName) {
        this.stdName = stdName;
    }

    public String getModule() {
        return module;
    }

    public void setModule(String module) {
        this.module = module;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }


}
