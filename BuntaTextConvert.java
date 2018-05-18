import java.io.Console;
import java.lang;
import java.io.*;

static int main()
{
    System.out.println("終了する場合は「end」を入力");
  for(;;)
  {
     //入力受け付け後、整形
      string inp = ReadLine();
      if(inp  == "end") return 0;
      StringBuilder sb = new StringBuilder();
      sb.append(inp);
      sb.deleteCharAt("");
      sb.deleteCharAt("\t");
      StringBuilder str =sb.ToString().replaceAll("[^a-zA-Z ｰｦ-ﾟ｢｣･｡､ｰ !\"#$%&()*+,-./:;<=>?[]^{|}~`\_@0-9]", ""); //数値のみ取り出す
      for(double result =0.0 ;!String.IsNullOrEmpty(str.ToString());)
      {
              //+ - * / のどれかが見つかれば、そこまでをテキストで返す
              String item = str.stream().findAny().orElse("+").orElse("-").orElse("*").orElse("/"));
              switch (item.substring(item.length-1,1) )
              case "+":
              result+=item.substring(0,item.length-1);
              Break;
              //........(-、*、/のケースを書く)
//現在のitemを入力テキストより部分削除
str.replaceAll(item,"");
}
 System.out.println("解析結果 : {0}", result);
 }
}
  
