package realchat;

import java.util.*;
import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

//������ ������ ����
@ServerEndpoint("/wsocket")
public class MyWebSocket {
	private static final Set<Session> sessions = Collections.synchronizedSet(new HashSet<Session>());
	static int i=0;
	@OnOpen
	public void handleOpen(Session session) {
		System.out.println("Ŭ���̾�Ʈ�� ���ӵǾ����ϴ�.");
		i++;
		System.out.println("�����ڼ�:"+i);
		//���ӵǴ� ������ ����ҿ� �����ϴ� �۾�
		sessions.add(session);
		
	}
	@OnClose
	public void handleClose() {
		System.out.println("Ŭ���̾�Ʈ ������ �����Ǿ����ϴ�.");
		i--;
	}
	@OnError
	public void handleError(Throwable error) {
		error.printStackTrace();
	}
	@OnMessage
	public void handleMassage(String message) {
		System.out.println("���ŵȸ޼���"+message);
	
		try {
			for(Session s:sessions) {
				s.getBasicRemote().sendText(message);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		//return "���ſϷ�";
	}
}
