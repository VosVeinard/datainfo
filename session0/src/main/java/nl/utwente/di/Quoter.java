package nl.utwente.di;

public class Quoter {

	public double getBookPrice(String input){
		double answer = 0;
		if(input.equals("1")){
			answer = 10;
		} else if(input.equals("2")){
			answer = 45;
		}else if(input.equals("3")){
			answer = 20;
		}else if(input.equals("4")){
			answer = 35;
		}else if(input.equals("5")){
			answer = 50;
		}
		return answer;
	}
}
