var path = require('path');
var webpack = require('webpack');

var entry_directory = "./app/assets/javascripts/custom"
var output_directory = "./app/assets/javascripts/"

module.exports = {
  entry: [
    'babel-polyfill',
    path.join(__dirname,entry_directory, 'app.js')
  ],
  output: {
    path:path.join(__dirname,output_directory),
    filename:"bundle.js"
  },
  devtool : 'source-map',
  module: {
    loaders: [
      {
        include: path.join(__dirname, output_directory),
        loader: 'babel-loader',
        query: {
          presets: ['es2015']
        }
      }
    ]
  }
};