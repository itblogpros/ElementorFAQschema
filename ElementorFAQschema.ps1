<#ElementorFAQschema#
 *Written by Graeme from ITBlogPros
 *THE SOFTWARE PROVIDED HEREUNDER IS PROVIDED ON AN "AS IS" BASIS, WITHOUT
 * ANY WARRANTIES OR REPRESENTATIONS EXPRESS, IMPLIED OR STATUTORY; INCLUDING,
 * WITHOUT LIMITATION, WARRANTIES OF QUALITY, PERFORMANCE, NONINFRINGEMENT,
 * MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.  NOR ARE THERE ANY
 * WARRANTIES CREATED BY A COURSE OR DEALING, COURSE OF PERFORMANCE OR TRADE
 * USAGE.  FURTHERMORE, THERE ARE NO WARRANTIES THAT THE SOFTWARE WILL MEET
 * YOUR NEEDS OR BE FREE FROM ERRORS, OR THAT THE OPERATION OF THE SOFTWARE
 * WILL BE UNINTERRUPTED.  IN NO EVENT SHALL THE COPYRIGHT HOLDERS OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.#>

function button{

###################Load Assembly for creating form & button######

[void][System.Reflection.Assembly]::LoadWithPartialName( “System.Windows.Forms”)
[void][System.Reflection.Assembly]::LoadWithPartialName( “Microsoft.VisualBasic”)

#####Define the form size & placement

$form = New-Object “System.Windows.Forms.Form”;
$form.Width = 900;
$form.Height = 600;
$form.Text = "Elementor FAQ Schema Creator";
$form.StartPosition = [System.Windows.Forms.FormStartPosition]::CenterScreen;

##############Define Question label1
$textLabel1 = New-Object “System.Windows.Forms.Label”;
$textLabel1.Left = 25;
$textLabel1.Top = 50;

$textLabel1.Text = "Q1";

##############Define Question label2
$textLabel2 = New-Object “System.Windows.Forms.Label”;
$textLabel2.Left = 25;
$textLabel2.Top = 100

$textLabel2.Text = "Q2";

##############Define Question label3
$textLabel3 = New-Object “System.Windows.Forms.Label”;
$textLabel3.Left = 25;
$textLabel3.Top = 150;

$textLabel3.Text = "Q3";

##############Define Question label4
$textLabel4 = New-Object “System.Windows.Forms.Label”;
$textLabel4.Left = 25;
$textLabel4.Top = 200;

$textLabel4.Text = "Q4";

##############Define Question label5
$textLabel5 = New-Object “System.Windows.Forms.Label”;
$textLabel5.Left = 25;
$textLabel5.Top = 250;

$textLabel5.Text = "Q5";

##############Define Answer label6
$textLabel6 = New-Object “System.Windows.Forms.Label”;
$textLabel6.Left = 425;
$textLabel6.Top = 50;

$textLabel6.Text = "A1";

##############Define Answer label7
$textLabel7 = New-Object “System.Windows.Forms.Label”;
$textLabel7.Left = 425;
$textLabel7.Top = 100

$textLabel7.Text = "A2";

##############Define Answer label8
$textLabel8 = New-Object “System.Windows.Forms.Label”;
$textLabel8.Left = 425;
$textLabel8.Top = 150;

$textLabel8.Text = "A3";

##############Define Answer label9
$textLabel9 = New-Object “System.Windows.Forms.Label”;
$textLabel9.Left = 425;
$textLabel9.Top = 200;

$textLabel9.Text = "A4";

##############Define Answer label10
$textLabel10 = New-Object “System.Windows.Forms.Label”;
$textLabel10.Left = 425;
$textLabel10.Top = 250;

$textLabel10.Text = "A5";

############Define text box1 for input
$textBox1 = New-Object “System.Windows.Forms.TextBox”;
$textBox1.Left = 150;
$textBox1.Top = 50;
$textBox1.width = 200;

############Define text box2 for input
$textBox2 = New-Object “System.Windows.Forms.TextBox”;
$textBox2.Left = 150;
$textBox2.Top = 100;
$textBox2.width = 200;

############Define text box3 for input
$textBox3 = New-Object “System.Windows.Forms.TextBox”;
$textBox3.Left = 150;
$textBox3.Top = 150;
$textBox3.width = 200;

############Define text box4 for input
$textBox4 = New-Object “System.Windows.Forms.TextBox”;
$textBox4.Left = 150;
$textBox4.Top = 200;
$textBox4.width = 200;

############Define text box5 for input
$textBox5 = New-Object “System.Windows.Forms.TextBox”;
$textBox5.Left = 150;
$textBox5.Top = 250;
$textBox5.width = 200;

############Define text box6 for input
$textBox6 = New-Object “System.Windows.Forms.TextBox”;
$textBox6.Left = 550;
$textBox6.Top = 50;
$textBox6.width = 200;

############Define text box7 for input
$textBox7 = New-Object “System.Windows.Forms.TextBox”;
$textBox7.Left = 550;
$textBox7.Top = 100;
$textBox7.width = 200;

############Define text box8 for input
$textBox8 = New-Object “System.Windows.Forms.TextBox”;
$textBox8.Left = 550;
$textBox8.Top = 150;
$textBox8.width = 200;

############Define text box9 for input
$textBox9 = New-Object “System.Windows.Forms.TextBox”;
$textBox9.Left = 550;
$textBox9.Top = 200;
$textBox9.width = 200;

############Define text box10 for input
$textBox10 = New-Object “System.Windows.Forms.TextBox”;
$textBox10.Left = 550;
$textBox10.Top = 250;
$textBox10.width = 200;

#############Define default values for the input boxes
$defaultValue = “”
$textBox1.Text = $defaultValue;

$defaultValue = “”
$textBox2.Text = $defaultValue;

$defaultValue = “”
$textBox3.Text = $defaultValue;

$defaultValue = “”
$textBox4.Text = $defaultValue;

$defaultValue = “”
$textBox5.Text = $defaultValue;

$defaultValue = “”
$textBox6.Text = $defaultValue;

$defaultValue = “”
$textBox7.Text = $defaultValue;

$defaultValue = “”
$textBox8.Text = $defaultValue;

$defaultValue = “”
$textBox9.Text = $defaultValue;

$defaultValue = “”
$textBox10.Text = $defaultValue;


#############define OK button
$button = New-Object “System.Windows.Forms.Button”;
$button.Left = 700;
$button.Top = 500;
$button.Width = 100;
$button.Text = “Ok”;

############# This is when you have to close the form after getting values
$eventHandler = [System.EventHandler]{
$textBox1.Text;
$textBox2.Text;
$textBox3.Text;
$textBox4.Text;
$textBox5.Text;
$textBox6.Text;
$textBox7.Text;
$textBox8.Text;
$textBox9.Text;
$textBox10.Text;
$form.Close();};


$button.Add_Click($eventHandler);
#############Add controls to all the above objects defined
$form.Controls.Add($button);
$form.Controls.Add($textLabel1);
$form.Controls.Add($textBox1);
$form.Controls.Add($textLabel2);
$form.Controls.Add($textBox2);
$form.Controls.Add($textLabel3);
$form.Controls.Add($textBox3);
$form.Controls.Add($textLabel4);
$form.Controls.Add($textBox4);
$form.Controls.Add($textLabel5);
$form.Controls.Add($textBox5);
$form.Controls.Add($textLabel6);
$form.Controls.Add($textBox6);
$form.Controls.Add($textLabel7);
$form.Controls.Add($textBox7);
$form.Controls.Add($textLabel8);
$form.Controls.Add($textBox8);
$form.Controls.Add($textLabel9);
$form.Controls.Add($textBox9);
$form.Controls.Add($textLabel10);
$form.Controls.Add($textBox10);
$ret = $form.ShowDialog();

$Box1 = $textBox1.Text;
$Box2 = $textBox2.Text;
$Box3 = $textBox3.Text;
$Box4 = $textBox4.Text;
$Box5 = $textBox5.Text;
$Box6 = $textBox6.Text;
$Box7 = $textBox7.Text;
$Box8 = $textBox8.Text;
$Box9 = $textBox9.Text;
$Box10 = $textBox10.Text;

$schema5 = '[sc_fs_multi_faq 

headline-1="h4" question-1="'+$Box1+'" answer-1="'+$Box6+'" 

headline-2="h4" question-2="'+$Box2+'" answer-2="'+$Box7+'"

headline-3="h4" question-3="'+$Box3+'" answer-3="'+$Box8+'" 

headline-4="h4" question-4="'+$Box4+'" answer-4="'+$Box9+'"

headline-5="h4" question-5="'+$Box5+'" answer-5="'+$Box10+'"

"count="5" html="true" css_class=""]'



$schema4 = '[sc_fs_multi_faq 

headline-1="h4" question-1="'+$Box1+'" answer-1="'+$Box6+'" 

headline-2="h4" question-2="'+$Box2+'" answer-2="'+$Box7+'"

headline-3="h4" question-3="'+$Box3+'" answer-3="'+$Box8+'" 

headline-4="h4" question-4="'+$Box4+'" answer-4="'+$Box9+'"

"count="4" html="true" css_class=""]'



$schema3 = '[sc_fs_multi_faq 

headline-1="h4" question-1="'+$Box1+'" answer-1="'+$Box6+'" 

headline-2="h4" question-2="'+$Box2+'" answer-2="'+$Box7+'"

headline-3="h4" question-3="'+$Box3+'" answer-3="'+$Box8+'" 

"count="3" html="true" css_class=""]'




$schema2 = '[sc_fs_multi_faq 

headline-1="h4" question-1="'+$Box1+'" answer-1="'+$Box6+'" 

headline-2="h4" question-2="'+$Box2+'" answer-2="'+$Box7+'"

"count="2" html="true" css_class=""]'



$schema1 = '[sc_fs_multi_faq 

headline-1="h4" question-1="'+$Box1+'" answer-1="'+$Box6+'" 

"count="1" html="true" css_class=""]'



$schema1 > schema1.txt
$schema2 > schema2.txt
$schema3 > schema3.txt
$schema4 > schema4.txt
$schema5 > schema5.txt

}
  

$return = button   




