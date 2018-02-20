#include <iostream>
#include <fstream>
#include <unordered_map>
#include <vector>
#include <string>
#include "parser.h"

class Dataframe {
private:
	std::unordered_map< std::string, std::vector<std::string> > data;	
	std::vector<std::string> header;
	int column_count, row_count;

public:
	Dataframe(std::string filename);
	std::vector<std::string> column_names();
	std::vector< std::pair<std::string, std::string> > row_at_index(int row_index);
	std::vector<std::string> get_column(std::string column_name);
	std::vector<std::string> column_types();
	Dataframe transpose();
	void print();
};
