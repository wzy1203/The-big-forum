package Model;

/**
 * Created by killeryuan on 2016/4/19.
 */
public class Conmments {

    private int id ;
    private int postID;
    private String postusername;
    private String Ccontent;
    private String authorname;
    private String time;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPostID() {
        return postID;
    }

    public void setPostID(int postID) {
        this.postID = postID;
    }

    public String getPostusername() {
        return postusername;
    }

    public void setPostusername(String postusername) {
        postusername = postusername;
    }

    public String getCcontent() {
        return Ccontent;
    }

    public void setCcontent(String ccontent) {
        Ccontent = ccontent;
    }

    public String getAuthorname() {
        return authorname;
    }

    public void setAuthorname(String authorname) {
        this.authorname = authorname;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
