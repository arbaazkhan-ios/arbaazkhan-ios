//
//  AccountView.swift
//  Appetizer
//
//  Created by Arbaaz on 12/09/24.
//

import SwiftUI

struct AccountView: View {
    
    @StateObject var viewModel = AccountViewModel()
    @FocusState private var focusedTextField: FormTextField?
    
    
    enum FormTextField {
        case firstName, lastName, email
    }
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Info")) {
                    TextField("First Name", text: $viewModel.user.firstName)
                        .focused($focusedTextField, equals: .firstName)
                        .onSubmit { focusedTextField = .lastName }
                        .submitLabel(.next)
                        .keyboardType(.alphabet)
                        .autocorrectionDisabled(true)
                        
                        
                    TextField("Last Name", text: $viewModel.user.lastName)
                        .focused($focusedTextField, equals: .lastName)
                        .onSubmit { focusedTextField = .email }
                        .submitLabel(.next)
                        .autocorrectionDisabled(true)
                        
                    TextField("Email", text: $viewModel.user.email)
                        .focused($focusedTextField, equals: .email)
                        .onSubmit { focusedTextField = nil }
                        .submitLabel(.continue)
                        .keyboardType(.emailAddress)
                        .autocorrectionDisabled(true)
                        .autocapitalization(.none)
                    DatePicker("Birthday", selection: $viewModel.user.birthdate, displayedComponents: .date)
                    
                    
                    Button {
                        viewModel.saveChanges()
                    } label: {
                        Text("Save Changes")
                            .fontWeight(.semibold)
                    }
                }
                
                Section(header: Text("Request")) {
                    Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
                    Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
                       
                }   .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            
            }.navigationTitle("😃 Account")
                .toolbar { ToolbarItemGroup(placement: .keyboard) {
                        Button("Dismiss") { focusedTextField = nil }
                    }
                }
        }
        .onAppear {
            viewModel.retrieveUser()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}
#Preview {
    AccountView()
}
