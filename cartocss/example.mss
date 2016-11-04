// example styling tornado data by mag value
#layer {
  line-width: 1;
  line-color: #3EBCAE;
  line-opacity: 1;
  [mag >=0] { line-color: lighten(red, 50%); }
  [mag >=1] { line-color: lighten(red, 40%); }
  [mag >=2] { line-color: lighten(red, 30%); }
  [mag >=3] { line-color: lighten(red, 20%); }
  [mag >=4] { line-color: lighten(red, 10%); }
  [mag >=5] { line-color: lighten(red, 0%); }
}
