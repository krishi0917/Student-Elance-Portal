package Package;

import java.util.Comparator;

public class GetCategoryAndField  {

	private String category;
	private String field;
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getField() {
		return field;
	}
	public void setField(String field) {
		this.field = field;
	}
	
	public static Comparator<GetCategoryAndField> categorySort = new Comparator<GetCategoryAndField>() {

		  public int compare(GetCategoryAndField c1, GetCategoryAndField c2) {
		     String cat1 = c1.getCategory().toUpperCase();
		     String cat2 = c2.getCategory().toUpperCase();

		     //ascending order
		     return cat1.compareTo(cat2);

		     //descending order
		     //return StudentName2.compareTo(StudentName1);
		    }};
	
	
}
