import java.net.*;
import java.io.*;

public class URLPrice {
	public static boolean isNumeric(String str){
		try{
			double d = Double.parseDouble(str);
		}
		catch(NumberFormatException nfe){
			return false;
		}
		return true;
	}
	
	public static double GetPrice(String ID, String PURL){
		double price = 0;
		try{
			/*System.out.println("-----");
			System.out.println("Inside of GetPrice()");
			System.out.println("ID: " + ID);
			System.out.println("PURL: " + PURL);*/
			
			URL oracle = new URL(PURL);
			BufferedReader in = new BufferedReader(
					new InputStreamReader(oracle.openStream()));

			String inputLine;
			while((inputLine = in.readLine()) != null){
				if(inputLine.contains(ID)){
					break;
				}
			}
			
			if(inputLine == null){
				in.close();
				return -1;
			}
			

			
			for(int i = 0; i<9; i++){
				inputLine = in.readLine();

			}
			

			String sPrice = inputLine.substring(inputLine.length() - 6);
			String sTenthPrice = inputLine.substring(inputLine.length() - 5);
			
			/*System.out.println("inputLine: " + inputLine);
			System.out.println("sPrice: " + sPrice);
			System.out.println("sTenthPrice: " + sTenthPrice);*/
			in.close();
			
			
			if(!isNumeric(sPrice)){
				if(!isNumeric(sTenthPrice)){
					return -1;
				}
				else{
				price = Double.parseDouble(sTenthPrice);
				return price;
				}
			}

			price = Double.parseDouble(sPrice);
			
			
			//return price;//Returns price
		}
		catch(Exception e){
			System.out.println(e.getMessage());
			System.out.println("Unexpected error has occurred. Please Try Again");
			System.out.println("If Error HTTP 503: Website was unavailable when called");
		}
		return price;
	}

	public static double Retriever(String supplier, int part){//Returns double PRICE or -1(ERROR) NOT EXIST
		//String ID;//Supplier ID to send to method
		String PID[];//PCPARTPICKER: Supplier ID
		
		String URL;//URL to send to method
		String PURL[];//PCPARTPICKER URLs for PART; (Indexes are the order of the item in database)-1
		
		//Initialize PCPARTPICKER SUPPLIER ID
		PID = new String[99];
		
		PID[0] = "/newegg/";//Newegg
		PID[1] = "/amazon/";//Amazon
		PID[2] = "";//Micro Center
		
		
		//Initialize PCPARTPICKER URLS
		
		PURL = new String[99];
		PURL[0] = "http://pcpartpicker.com/product/tdmxFT/intel-cpu-bx80662i76700k";//i7-6700k
		PURL[1] = "http://pcpartpicker.com/product/tgkD4D/amd-cpu-fd9370fhhkwof";//FX-9370
		PURL[2] = "http://pcpartpicker.com/product/YjmLrH/amd-cpu-ad680kwohlbox";//A10-6800k
		PURL[3] = "http://pcpartpicker.com/product/KgJkcf/asus-motherboard-z170progaming";//Z170 PRO Gaming
		PURL[4] = "http://pcpartpicker.com/product/yFjG3C/asus-motherboard-m5a99fxpror20";//M5a99FX
		PURL[5] = "http://pcpartpicker.com/product/dNtCmG/asrock-motherboard-fm2a75pro4m";//FM2A75
		PURL[6] = "http://pcpartpicker.com/product/dNPzK8/gskill-memory-f42666c18s4grs";//RIPJAWS SERIES
		PURL[7] = "http://pcpartpicker.com/product/4wGkcf/kingston-memory-hx316c10fb8";//KINGSTON HYPERX FURY BLACK
		PURL[8] = "http://pcpartpicker.com/product/h7hj4D/corsair-memory-cmk8gx4m1a2400c14r";//CORSAIR VENGEANCE LPX
		PURL[9] = "http://pcpartpicker.com/product/MwW9TW/western-digital-internal-hard-drive-wd10ezex";//WESTERN DIGITAL
		PURL[10] = "http://pcpartpicker.com/product/3kL7YJ/samsung-internal-hard-drive-mz75e250bam";//SAMSUNG MZ
		PURL[11] = "http://pcpartpicker.com/product/KyCwrH/seagate-internal-hard-drive-st2000dm001";//SEAGATE ST
		PURL[12] = "http://pcpartpicker.com/product/g63RsY/evga-power-supply-120g10650xr";//EVGA SUPERNOVA 650
		PURL[13] = "http://pcpartpicker.com/product/cn3RsY/corsair-power-supply-cp9020057na";//CORSAIR AX1500i
		PURL[14] = "http://pcpartpicker.com/product/FQ648d/corsair-power-supply-cp9020101na";//CX450M
		PURL[15] = "https://pcpartpicker.com/product/Vpdqqs/nzxt-case-cas340ww1";//S340
		PURL[16] = "https://pcpartpicker.com/product/3MPfrH/deepcool-case-tesseractsw";//DEEPCOOL TESSERACT
		PURL[17] = "https://pcpartpicker.com/product/y7YWGX/fractal-design-case-fdcacore2300bl";//FRACTAL DESIGN CORE2300
		PURL[18] = "https://pcpartpicker.com/product/mWV48d/benq-monitor-gl2460hm";//BENQ GL2460HM
		PURL[19] = "https://pcpartpicker.com/product/Nbbp99/acer-monitor-umvh6aa003";//ACER H236HLBID
		PURL[20] = "https://pcpartpicker.com/product/BcTrxr/dell-monitor-s2716dg";//DELL S2716DG
		PURL[21] = "https://pcpartpicker.com/product/fKp323/msi-geforce-gtx-1070-8gb-video-card-gtx-1070-gaming-x-8g";//MSI GTX-1070
		PURL[22] = "https://pcpartpicker.com/product/Pshj4D/evga-geforce-gtx-1070-8gb-ftw-gaming-acx-30-video-card-08g-p4-6276-kr";//EVGA GEFORCE GTX 1070
		PURL[23] = "https://pcpartpicker.com/product/qKp323/zotac-geforce-gtx-1080-8gb-amp-extreme-video-card-zt-p10800b-10p";//ZOTAC GEFORCE GTX 1080TI
		
		//Get Price from Internet
			URL = PURL[part-1];
			
			double price = 0;
			
			//Check What Supplier
			if(supplier.equals("Newegg")) price = GetPrice(PID[0], PURL[part-1]);
			if(supplier.equals("Amazon")) price = GetPrice(PID[1], PURL[part-1]);
			if(supplier.equals("Micro Center")) price = GetPrice(PID[2], PURL[part-1]);
		
			if(price == -1 || price == 0){
				System.out.println();
				System.out.println("The item is unavailable or not in stock for this supplier");
				System.out.println();
			}
			
		return price;
			//Don't forget to handle None Existing Supplier
	}
}
