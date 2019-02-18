<pet>
  <!-- HTML -->
  <div class="container">
    <img src={ petImg } alt="pet">
    <br>
    <div class="row">
      <p>Mode: {petPost}</p>
      <p>Tiredness: {petLike}</p>
    </div>
    <br>
    <button name="post" onclick={ setPost }>Post</button>
    <button name="like" onclick={ setLike }>Like</button>
    <button name="reset" onclick={ setReset }>Reset</button>

  </div>
  <script>
    // JAVASCRIPT
    let tag = this;

    this.petPost = 0;
    this.petLike = 0;
    this.petImg = "http://i64.tinypic.com/f2ihrm.png"

    this.setReset = function(event) {
      this.petPost = 0;
      this.petLike = 0;
      this.imgState();
    }
    this.setPost = function(event) {
      debugger;
      this.petPost++;
      this.imgState();
    }
    this.setLike = function(event) {
      debugger;
      this.petLike++;
      this.imgState();
    }
    // this.imgState = function(event){
    //   if (this.petPost <= 0 && this.petLike <=0) {
    //     this.petImg = "http://i64.tinypic.com/f2ihrm.png"
    //   }
    //   else if (this.petPost<= 1 && this.petLike<=1) {
    //     this.petImg = "http://i64.tinypic.com/xcq4gk.png"
    //     // alert('sad blue');
    //   }
    //   else if (this.petPost<= 1 && this.petLike<=2) {
    //     this.petImg = "http://i63.tinypic.com/t655di.png"
    //     // alert('- blue');
    //   }
    //   else if (this.petPost<= 1 && this.petLike<=3) {
    //     this.petImg = "http://i64.tinypic.com/24o3c49.png"
    //   //  alert('happy blue');
    //   }
    //   else if (this.petPost<= 2 && this.petLike<=1) {
    //     this.petImg = "http://i68.tinypic.com/15nszy8.png"
    //     // alert('sad yellow');
    //   }
    //   else if (this.petPost<= 2 && this.petLike<=2) {
    //     this.petImg = "http://i67.tinypic.com/ldufb.png"
    //     // alert('- yellow');
    //   }
    //   else if (this.petPost<= 2 && this.petLike<=3) {
    //     this.petImg = "http://i67.tinypic.com/2cfxjk4.png"
    //     // alert('happy yellow');
    //   }
    //   else if (this.petPost<= 3 && this.petLike<=1) {
    //     this.petImg = "http://i68.tinypic.com/2ltnkg3.png"
    //     //alert('sad green');
    //   }
    //   else if (this.petPost<= 3 && this.petLike<=2) {
    //     this.petImg = "http://i67.tinypic.com/282pd2u.png"
    //     //alert('- green');
    //   }
    //   else if (this.petPost<= 3 && this.petLike<=3) {
    //     this.petImg = "http://i63.tinypic.com/sliul3.png"
    //     //alert('happy green');
    //   }
    // }



     this.imgState = function(event){
       if (this.petPost == 0 && this.petLike == 0) {
           this.petImg = "http://i64.tinypic.com/f2ihrm.png"}


       else if (this.petPost >= 6) {
         if (this.petLike >=6){
           this.petImg = "http://i63.tinypic.com/sliul3.png"
           //happy green
         }
         else if (this.petLike >= 3 && this.petLike < 6 ) {
           this.petImg = "http://i67.tinypic.com/282pd2u.png"
           // -green
         }
         else {this.petImg = "http://i68.tinypic.com/2ltnkg3.png"}
         //sad green
       }
       else if (this.petPost < 6 && this.petPost >= 3){
         if (this.petLike >=6){
           this.petImg = "http://i67.tinypic.com/2cfxjk4.png"
           //happy yellow
         }
         else if (this.petLike >= 3 && this.petLike < 6 ) {
           this.petImg = "http://i67.tinypic.com/ldufb.png"
           // -yellow
         }
         else {this.petImg = "http://i68.tinypic.com/15nszy8.png"}
         //sad yellow
        }

       else if (this.petPost < 3){
         if (this.petLike >= 6){
           this.petImg = "http://i64.tinypic.com/24o3c49.png"
         }
         else if (this.petLike >=3 && this.petLike < 6){
           this.petImg = "http://i63.tinypic.com/t655di.png"
         }
         else{this.petImg = this.petImg = "http://i64.tinypic.com/xcq4gk.png"}

       }
     }

  </script>
</pet>
