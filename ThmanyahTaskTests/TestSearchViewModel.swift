//
//  TestSearchViewModel.swift
//  ThmanyahTaskTests
//
//  Created by Ahmed Azzab Sanad on 08/01/2026.
//

import Testing

@testable import ThmanyahTask

struct TestSearchViewModel {

    @MainActor
    @Test func testPerformSearchWithoutSearchText() async throws {
        let searchVM = SearchViewModel(httpClient: HTTPClient())
        try await searchVM.performSearch()
        #expect(searchVM.searchResult.count == 0)
        
    }
    
    @MainActor
    @Test func testPerformSearch() async throws {
        let searchVM = SearchViewModel(httpClient: HTTPClient())
        searchVM.searchText = "podcast"
        try await searchVM.performSearch()
        #expect(searchVM.searchResult.count > 0)
        
    }
    
}
