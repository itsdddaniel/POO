package ImageService;

/**
 *Permite la generacion de datos aleatorios.
 */

public class RandomManager {

	public int getInt(int min, int max){
		return (int)(Math.random()*(max-min)+min);
	}
	
	public int[] getIntArray(int size) {
		
		int[] array = new int[size];
		for(int i=0; i<size; i++) { 
			array[i] = this.getInt(0,101);
		}
		return array;
	}
	
	public char getChar() {
		String alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
		return alphabet.charAt(this.getInt(0,alphabet.length()));
	}
	
}
